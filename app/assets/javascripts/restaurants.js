document.addEventListener("DOMContentLoaded", function() {
  var checkboxes = document.getElementsByClassName("item-checkbox");
  var totalPriceElement = document.getElementById("total-price");

  Array.prototype.forEach.call(checkboxes, function(checkbox) {
    checkbox.addEventListener("change", function() {
      var totalPrice = 0;
      Array.prototype.forEach.call(checkboxes, function(checkbox) {
        if (checkbox.checked) {
          totalPrice += parseInt(checkbox.dataset.price);
        }
      });

      totalPriceElement.textContent = totalPrice;
    });
  });
});



  