from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Phylorank_Rogue_Test_V0_1_0 = CommandToolBuilder(tool="phylorank_rogue_test", base_command=["phylorank", "rogue_test"], inputs=[ToolInput(tag="in_out_group_tax_on", input_type=String(optional=True), prefix="--outgroup_taxon", doc=InputDocumentation(doc="taxon to use as outgroup (e.g., d__Archaea); imples\ntree should be rooted")), ToolInput(tag="in_decorate", input_type=Boolean(optional=True), prefix="--decorate", doc=InputDocumentation(doc="indicates trees should be decorated")), ToolInput(tag="in_input_tree_dir", input_type=String(), position=0, doc=InputDocumentation(doc="directory containing trees to assess incongruence over")), ToolInput(tag="in_taxonomy_file", input_type=String(), position=1, doc=InputDocumentation(doc="file indicating taxonomy of extant taxa")), ToolInput(tag="in_output_dir", input_type=String(), position=2, doc=InputDocumentation(doc="desired output directory for generated files"))], outputs=[], container="quay.io/biocontainers/phylorank:0.1.9--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylorank_Rogue_Test_V0_1_0().translate("wdl")

