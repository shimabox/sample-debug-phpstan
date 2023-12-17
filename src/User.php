<?php declare(strict_types=1);

namespace App;

use Carbon\CarbonImmutable;

class User
{
    public function __construct(
        private readonly int $id,
        private readonly string $name,
        private readonly CarbonImmutable $birth
    ) {}

    public function toArray(): array
    {
        return [
            'id'    => $this->id,
            'name'  => $this->name,
            'birth' => $this->birth,
        ];
    }
}
