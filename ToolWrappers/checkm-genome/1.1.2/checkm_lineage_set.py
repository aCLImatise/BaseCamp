from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, Directory, String

Checkm_Lineage_Set_V0_1_0 = CommandToolBuilder(tool="checkm_lineage_set", base_command=["checkm", "lineage_set"], inputs=[ToolInput(tag="in_unique", input_type=Int(optional=True), prefix="--unique", doc=InputDocumentation(doc="minimum number of unique phylogenetic markers required to use lineage-specific marker set (default: 10)")), ToolInput(tag="in_multi", input_type=Int(optional=True), prefix="--multi", doc=InputDocumentation(doc="maximum number of multi-copy phylogenetic markers before defaulting to domain-level marker set (default: 10)")), ToolInput(tag="in_force_domain", input_type=Boolean(optional=True), prefix="--force_domain", doc=InputDocumentation(doc="use domain-level sets for all bins")), ToolInput(tag="in_no_refinement", input_type=Boolean(optional=True), prefix="--no_refinement", doc=InputDocumentation(doc="do not perform lineage-specific marker set refinement")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress console output")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="specify an alternative directory for temporary files")), ToolInput(tag="in_tree_dir", input_type=String(), position=0, doc=InputDocumentation(doc="directory specified during tree command")), ToolInput(tag="in_marker_file", input_type=String(), position=1, doc=InputDocumentation(doc="output file describing marker set for each bin"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Lineage_Set_V0_1_0().translate("wdl", allow_empty_container=True)

