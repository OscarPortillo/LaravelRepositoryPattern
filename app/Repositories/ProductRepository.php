<?php

namespace App\Repositories;

use App\Interfaces\ProductRepositoryInterface;
use App\Models\Product;

class ProductRepository implements ProductRepositoryInterface
{
    public function all()
    {
        return Product::all();
    }

    public function find($id)
    {
        return Product::findOrFail($id);
    }

    public function delete($id)
    {
        return Product::destroy($id);
    }

    public function create(array $productDetails)
    {
        return Product::create($productDetails);
    }

    public function update($id, array $newDetails)
    {
        return Product::whereId($id)->update($newDetails);
    }
}
