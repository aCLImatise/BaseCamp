from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Pipits_Phylotype_Biom_V0_1_0 = CommandToolBuilder(tool="pipits_phylotype_biom", base_command=["pipits_phylotype_biom"], inputs=[ToolInput(tag="in__biom_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="[REQUIRED] BIOM file")), ToolInput(tag="in_phylotype_txt_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[REQUIRED] PHYLOTYPE txt file")), ToolInput(tag="in_classification_level_species", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="[REQUIRED] Classification Level. 6 = species, 5 = genus, 4 =\nfamily, 3 = order, 2 = class, 1 = phylum\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pipits_Phylotype_Biom_V0_1_0().translate("wdl", allow_empty_container=True)

