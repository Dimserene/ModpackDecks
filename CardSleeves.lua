-- Create an Atlas for the sleeves (this reuses the enhancer atlas from the decks)
SMODS.Atlas{
    key = "enhancers_sleeves",
    path = "enhancers.png",
    px = 71,
    py = 95
}

-- Frontier Sleeve (converted from Frontier Deck, using placeholder atlas)
CardSleeves.Sleeve{
    key = "frontier_sleeve",  -- Naming convention
    name = "Frontier Sleeve",  -- Sleeve name
    prefix_config = {atlas = false},  -- Disable custom atlas
    atlas = "casl_sleeve_atlas",  -- Use placeholder atlas
    pos = {x = 0, y = 0},  -- Position for the placeholder sleeve
    loc_txt = {
        name = "Frontier Sleeve",
        text = {
            "Start run with",
            "an {C:eternal}Eternal{} and {C:dark_edition}Negative{} {C:attention}Moon Base",
            "Requires SDM_0'S Stuff"
        }
    },
    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                -- Adding the same joker effect as in the deck
                add_joker("j_sdm_moon_base", "negative", true, true)
                return true
            end
        }))
    end,
    unlocked = true  -- Sleeves are unlocked by default
}

--[[ -- Grocery Sleeve (converted from Grocery Deck, using placeholder atlas)
CardSleeves.Sleeve{
    key = "grocery_sleeve",  -- Naming convention
    name = "Grocery Sleeve",  -- Sleeve name
    prefix_config = {atlas = false},  -- Disable custom atlas
    atlas = "casl_sleeve_atlas",  -- Use placeholder atlas
    pos = {x = 0, y = 1},  -- Position for the placeholder sleeve
    loc_txt = {
        name = "Grocery Sleeve",
        text = {
            "Start run with",
            "an {C:eternal}Eternal{} and {C:dark_edition}Negative{} {C:attention}Cut The Cheese",
            "Requires Jank Jonklers"
        }
    },
    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                -- Adding the same joker effect as in the deck
                add_joker("j_jank_cut_the_cheese", "negative", true, true)
                return true
            end
        }))
    end,
    unlocked = true  -- Sleeves are unlocked by default
} ]]