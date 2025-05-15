// components/KanjiCard.tsx
import { useState } from "react";

export default function KanjiCard({ kanji }: { kanji: KanjiData }) {
  const [showMeaning, setShowMeaning] = useState(false);

  return (
    <div className="rounded-2xl shadow-xl p-6 bg-white w-80">
      <h1 className="text-5xl font-bold text-center">{kanji.character}</h1>
      <p className="text-center text-gray-600 mt-2">{kanji.kunyomi}・{kanji.onyomi}</p>
      {showMeaning && (
        <div className="mt-4">
          <p><strong>意味:</strong> {kanji.meaning}</p>
          <p><strong>例文:</strong> {kanji.example}</p>
        </div>
      )}
      <button onClick={() => setShowMeaning(!showMeaning)} className="mt-4 px-4 py-2 bg-blue-500 text-white rounded-xl">
        {showMeaning ? "かくす" : "意味を見る"}
      </button>
    </div>
  );
}
