from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Tranalign_V0_1_0 = CommandToolBuilder(tool="tranalign", base_command=["tranalign"], inputs=[ToolInput(tag="in_table", input_type=Boolean(optional=True), prefix="-table", doc=InputDocumentation(doc="menu       [0] Code to use (Values: 0 (Standard); 1\n(Standard (with alternative initiation\ncodons)); 2 (Vertebrate Mitochondrial); 3\n(Yeast Mitochondrial); 4 (Mold, Protozoan,\nCoelenterate Mitochondrial and\nMycoplasma/Spiroplasma); 5 (Invertebrate\nMitochondrial); 6 (Ciliate Macronuclear and\nDasycladacean); 9 (Echinoderm\nMitochondrial); 10 (Euplotid Nuclear); 11\n(Bacterial); 12 (Alternative Yeast Nuclear);\n13 (Ascidian Mitochondrial); 14 (Flatworm\nMitochondrial); 15 (Blepharisma\nMacronuclear); 16 (Chlorophycean\nMitochondrial); 21 (Trematode\nMitochondrial); 22 (Scenedesmus obliquus);\n23 (Thraustochytrium Mitochondrial))"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tranalign_V0_1_0().translate("wdl", allow_empty_container=True)

