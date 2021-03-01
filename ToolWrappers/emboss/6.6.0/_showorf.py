from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Showorf_V0_1_0 = CommandToolBuilder(tool="_showorf", base_command=["_showorf"], inputs=[ToolInput(tag="in_frames", input_type=Boolean(optional=True), prefix="-frames", doc=InputDocumentation(doc="menu       [1,2,3,4,5,6] Select one or more values\n(Values: 0 (None); 1 (F1); 2 (F2); 3 (F3); 4\n(R1); 5 (R2); 6 (R3))")), ToolInput(tag="in_table", input_type=Boolean(optional=True), prefix="-table", doc=InputDocumentation(doc="menu       [0] Genetic code to use (Values: 0\n(Standard); 1 (Standard (with alternative\ninitiation codons)); 2 (Vertebrate\nMitochondrial); 3 (Yeast Mitochondrial); 4\n(Mold, Protozoan, Coelenterate Mitochondrial\nand Mycoplasma/Spiroplasma); 5\n(Invertebrate Mitochondrial); 6 (Ciliate\nMacronuclear and Dasycladacean); 9\n(Echinoderm Mitochondrial); 10 (Euplotid\nNuclear); 11 (Bacterial); 12 (Alternative\nYeast Nuclear); 13 (Ascidian Mitochondrial);\n14 (Flatworm Mitochondrial); 15\n(Blepharisma Macronuclear); 16\n(Chlorophycean Mitochondrial); 21 (Trematode\nMitochondrial); 22 (Scenedesmus obliquus);\n23 (Thraustochytrium Mitochondrial))")), ToolInput(tag="in_width", input_type=Boolean(optional=True), prefix="-width", doc=InputDocumentation(doc="integer    [50] Width of screen (Integer 10 or more)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Showorf_V0_1_0().translate("wdl", allow_empty_container=True)

