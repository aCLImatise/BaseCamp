from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Int, Float, File

Megalodon_Extras_Modified_Bases_Create_Ground_Truth_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_modified_bases_create_ground_truth", base_command=["megalodon_extras", "modified_bases", "create_ground_truth"], inputs=[ToolInput(tag="in_bed_methyl_files", input_type=Array(t=String(), optional=True), prefix="--bed-methyl-files", doc=InputDocumentation(doc="Bed methyl files.")), ToolInput(tag="in_coverage_threshold", input_type=Int(optional=True), prefix="--coverage-threshold", doc=InputDocumentation(doc="Only include sites with sufficient coverage. Default:\n1 (= All sites)")), ToolInput(tag="in_pct_mod_thresholds", input_type=Float(optional=True), prefix="--pct-mod-thresholds", doc=InputDocumentation(doc="PCT_MOD_THRESHOLDS\nLower and upper percent modified thresholds for ground\ntruth modified positions. Default: [10.0, 90.0]")), ToolInput(tag="in_out_csv", input_type=File(optional=True), prefix="--out-csv", doc=InputDocumentation(doc="Output filename for ground truth calls. Default:")), ToolInput(tag="in_ground_truth_modifications_dot_csv", input_type=String(), position=0, doc=InputDocumentation(doc="--strand-offset STRAND_OFFSET"))], outputs=[ToolOutput(tag="out_out_csv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_csv", type_hint=File()), doc=OutputDocumentation(doc="Output filename for ground truth calls. Default:"))], container="quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Modified_Bases_Create_Ground_Truth_V0_1_0().translate("wdl")

