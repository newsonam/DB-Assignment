// **********     MONGODB SCHEMA   *********
// Now you can use these schemas to create collections in MongoDB
const mongoose = require('mongoose');

// Define the schema for a product 
const ProductSchema = new mongoose.Schema({
    id: { type: Number },
    name: { type: String, required: true },
    desc: { type: String, required: true },
    SKU: { type: String, required: true },
    category_id: { type: ObjectId, ref: 'Product_Category' },
    inventory_id: { type: ObjectId, ref: 'Product_Inventory' },
    price: { type: Double, required: true },
    discount_id: { type: ObjectId, ref: 'Discount' },
    created_at: { type: Date, default: Date.now },
    modified_at: { type: Date, default: Date.now },
    deleted_at: { type: Date, default: Date.now }
});

// Define the schema for a product category
const CategorySchema = new mongoose.Schema({
    id: { type: Number, required: true },
    name: { type: String, required: true },
    desc: { type: String, required: true },
    created_at: { type: Date, default: Date.now },
    modified_at: { type: Date, default: Date.now },
    deleted_at: { type: Date, default: Date.now }
});

// Define the schema for a product inventory 
const InventorySchema = new mongoose.Schema({
    id: { type: Number, required: true },
    quantity: { type: Number, required: true },
    created_at: { type: Date, default: Date.now },
    modified_at: { type: Date, default: Date.now },
    deleted_at: { type: Date, default: Date.now }
});

// Define the schema for a discount 
const DiscountSchema = new mongoose.Schema({
    id: { type: Number, required: true },
    name: { type: String, required: true },
    desc: { type: String, required: true },
    discount_percent: { type: Double, required: true },
    active: { type: Boolean, required: true },
    created_at: { type: Date, default: Date.now },
    modified_at: { type: Date, default: Date.now },
    deleted_at: { type: Date, default: Date.now }
});

const ProductModel = mongoose.model('Product', new Schema(ProductSchema));
const CategoryModel = mongoose.model('Product_Category', new Schema(CategorySchema));
const InventoryModel = mongoose.model('Product_Inventory', new Schema(InventorySchema));
const DiscountModel = mongoose.model('Discount', new Schema(DiscountSchema));

module.exports = ProductModel, CategoryModel, InventoryModel, DiscountModel;