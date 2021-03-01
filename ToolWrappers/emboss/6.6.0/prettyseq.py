from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Prettyseq_V0_1_0 = CommandToolBuilder(tool="prettyseq", base_command=["prettyseq"], inputs=[ToolInput(tag="in_range", input_type=Boolean(optional=True), prefix="-range", doc=InputDocumentation(doc="range      [Whole sequence] Range(s) to translate")), ToolInput(tag="in_table", input_type=Boolean(optional=True), prefix="-table", doc=InputDocumentation(doc="menu       [0] Genetic code to use (Values: 0\n(Standard); 1 (Standard (with alternative\ninitiation codons)); 2 (Vertebrate\nMitochondrial); 3 (Yeast Mitochondrial); 4\n(Mold, Protozoan, Coelenterate Mitochondrial\nand Mycoplasma/Spiroplasma); 5\n(Invertebrate Mitochondrial); 6 (Ciliate\nMacronuclear and Dasycladacean); 9\n(Echinoderm Mitochondrial); 10 (Euplotid\nNuclear); 11 (Bacterial); 12 (Alternative\nYeast Nuclear); 13 (Ascidian Mitochondrial);\n14 (Flatworm Mitochondrial); 15\n(Blepharisma Macronuclear); 16\n(Chlorophycean Mitochondrial); 21 (Trematode\nMitochondrial); 22 (Scenedesmus obliquus);\n23 (Thraustochytrium Mitochondrial))")), ToolInput(tag="in_width", input_type=Boolean(optional=True), prefix="-width", doc=InputDocumentation(doc="integer    [60] Width of screen (Integer 10 or more)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prettyseq_V0_1_0().translate("wdl", allow_empty_container=True)

