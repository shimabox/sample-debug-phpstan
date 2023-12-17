<?php declare(strict_types=1);

namespace App\Level6;

use Carbon\CarbonImmutable;

class User
{
    /**
     * @param int $id
     * @param string $name
     * @param CarbonImmutable $birth
     */
    public function __construct(
        private readonly int $id,
        private readonly string $name,
        private readonly CarbonImmutable $birth
    ) {}

    /**
     * @return array{id: int, name: string, birth: CarbonImmutable}
     */
    public function toArray(): array
    {
        return [
            'id'    => $this->id,
            'name'  => $this->name,
            'birth' => $this->birth,
        ];
    }
}
