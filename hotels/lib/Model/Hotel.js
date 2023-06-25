import mongoose from "mongoose";

const hotelSchema = new mongoose.Schema({
    title: {type: String, required: true, minLength:2, maxLength:25},
    description: {type: String, required: true, maxLength:300},
    createdAt: {type: Date, required: true, default: Date.now},
    price: [{type: String, required: true}],
    score: [{type: Double, required: true}],
});

const Hotel = mongoose.model("Hotel", hotelSchema);

export default Hotel;