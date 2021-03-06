module Data.Function.CombinatorBirds
       where

import Prelude (const, id)
import Control.Monad (ap)

bluebird = ap (const ap) const

blackbird = bluebird bluebird bluebird

bunting = bluebird blackbird bluebird

becard = bluebird dove bluebird

-- cardinal == flip

cardinal = ap (bluebird bluebird ap) (const const)

dove = bluebird bluebird

dickcissel = bluebird dove

eagle = bluebird blackbird

bald_eagle = eagle eagle

finch = eagle thrush thrush eagle thrush

goldfinch = bluebird bluebird cardinal

hummingbird = bluebird warbler (bluebird cardinal)

identity_bird = id

iota_bird = vireo starling kestrel

jay = bluebird (bluebird cardinal) (warbler (bluebird cardinal eagle))

kestrel = const

-- The lark and mockingbird are not constructible by this scheme

oriole = eagle thrush

owl = ap id

queer_bird = cardinal bluebird

quixotic_bird = bluebird cardinal bluebird

quizzical_bird = cardinal quixotic_bird

quacky_bird = bluebird thrush

robin = dove thrush

starling :: (a -> b -> c) -> (a -> b) -> a -> c
starling = ap

thrush = cardinal id

-- The turing is not constructible.

vireo = bluebird cardinal thrush

warbler a b = a b b

converse_warbler = cardinal warbler

-- The why bird is not constructible.

id_1_r = ap (ap const)

warbler_1_r = bluebird warbler

cardinal_1_r = bluebird cardinal

robin_1_r = cardinal_1_r cardinal_1_r

finch_1_r = bluebird cardinal_1_r robin_1_r

vireo_1_r = cardinal_1_r finch_1_r

id_2_r a b c = a b c

kite = kestrel id

