from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mafspeciessubset_V0_1_0 = CommandToolBuilder(tool="mafSpeciesSubset", base_command=["mafSpeciesSubset"], inputs=[ToolInput(tag="in_keep_first", input_type=Boolean(optional=True), prefix="-keepFirst", doc=InputDocumentation(doc="- If set, keep the first 'a' line in a maf no matter what\nUseful for mafFrag results where we use this for the gene name\n")), ToolInput(tag="in_truth_dot", input_type=String(), position=0, doc=InputDocumentation(doc="species.lst is a file with a list of species to keep"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mafspeciessubset_V0_1_0().translate("wdl", allow_empty_container=True)

