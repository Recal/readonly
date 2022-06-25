function readonly(tbl)
  tbl.__readonly = true
  setmetatable(tbl, {
      __newindex = function(table, key, value)
        error(
          string.format(
          "You may not add variable with type of %s ('%s') to this table as it is marked as read-only.", 
          type(value),
          key
          )
        )
      end
  })

  return tbl
end
