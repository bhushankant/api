<?php
namespace App;
use League\Fractal;
use App\Hero;


 class HeroTransformer extends Fractal\TransformerAbstract
    {
        public function transform(Hero $hero)
        {
            return [
                'id' => (int) $hero->id,
                'name' => $hero->title,
                ];
        }
    }

