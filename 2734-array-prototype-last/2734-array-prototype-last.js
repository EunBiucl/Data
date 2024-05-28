/**
 * @return {null|boolean|number|string|Array|Object}
 */
Array.prototype.last = function() {
    
};

/**
 * const arr = [1, 2, 3];
 * arr.last(); // 3
 */
 Array.prototype.last = function () {
  // check if the array is not empty
  if (this.length > 0) {
    return this[this.length - 1]; // Return the last element
  } else {
    return -1; // Array is empty
  }
};