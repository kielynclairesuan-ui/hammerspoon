-- STRG + ALT + V -> Clipboard als "getippten Text" einfügen
hs.hotkey.bind({"ctrl", "alt"}, "v", function()
    local text = hs.pasteboard.getContents()
    if text == nil then return end

    for char in text:gmatch(".") do
        hs.eventtap.keyStrokes(char)
        hs.timer.usleep(40000) -- 40ms Pause
    end

    -- Falls du am Ende noch Enter willst:
    -- hs.eventtap.keyStroke({}, "return")
end)
