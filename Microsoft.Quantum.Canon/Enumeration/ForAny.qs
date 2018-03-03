﻿// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.


namespace Microsoft.Quantum.Canon {
    /// # Summary 
    /// The `ForAny` function takes an array and a predicate that is defined 
    /// for the elements of the array, and checks if at least one element of 
    /// the array satisfies the predicate. 
    ///
    /// # Remarks
    /// The function is defined for generic types, i.e., whenever we have 
    /// an array `'T[]` and a function `predicate: 'T -> Bool` we can produce
    /// a `Bool` value that indicates if some element satisfies `predicate`. 
    /// 
    /// # Type Parameters
    /// ## 'T
    /// The type of `array` elements.
    ///
    /// # Input
    /// ## predicate
    /// A function from `'T` to `Bool` that is used to check elements. 
    /// ## array
    /// An array of elements over `'T`.
	///
    /// # Output
    /// A `Bool` value of the OR function of the predicate applied to all elements.
    function ForAny<'T>(predicate : ('T -> Bool), array : 'T[]) : Bool {
        mutable result = false; 
        for (idxElement in 0..Length(array) - 1) {
            set result = result || predicate(array[idxElement]);
        }
        return result;
    }
}
