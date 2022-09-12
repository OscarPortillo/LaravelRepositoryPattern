<?php

namespace App\Http\Controllers;

use App\Interfaces\ProductRepositoryInterface;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class ProductController extends Controller
{
    private ProductRepositoryInterface $productRepository;

    public function __construct(ProductRepositoryInterface $productRepository)
    {
        $this->productRepository = $productRepository;
    }

    public function all(): JsonResponse
    {
        return response()->json([
            'data' => $this->productRepository->all()
        ]);
    }

    public function find(Request $request): JsonResponse
    {
        $productId = $request->route('id');

        return response()->json([
            'data' => $this->productRepository->find($productId)
        ]);
    }

    public function delete(Request $request): JsonResponse
    {
        $productId = $request->route('id');

        return response()->json([
            'data' => $this->productRepository->delete($productId)
        ]);
    }

    public function create(Request $request): JsonResponse
    {
        $productDetails = $request->only([
            'name',
            'description',
            'price'
        ]);

        return response()->json([
            'data' => $this->productRepository->create($productDetails)
        ]);
    }

    public function update(Request $request): JsonResponse
    {
        $productId = $request->route('id');
        $productDetails = $request->only([
            'name',
            'description',
            'price'
        ]);

        return response()->json([
            'data' => $this->productRepository->update($productId, $productDetails)
        ]);
    }


}
