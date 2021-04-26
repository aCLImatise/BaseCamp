from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Float, Boolean

Cooltools_Diamond_Insulation_V0_1_0 = CommandToolBuilder(tool="cooltools_diamond_insulation", base_command=["cooltools", "diamond-insulation"], inputs=[ToolInput(tag="in_window_pixels", input_type=String(optional=True), prefix="--window-pixels", doc=InputDocumentation(doc="set, the window sizes must          be provided in")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Specify output file name to store the\ninsulation in a tsv format.")), ToolInput(tag="in_ignore_diags", input_type=Int(optional=True), prefix="--ignore-diags", doc=InputDocumentation(doc="The number of diagonals to ignore. By\ndefault, equals the number of diagonals\nignored during IC balancing.")), ToolInput(tag="in_min_frac_valid_pixels", input_type=Float(optional=True), prefix="--min-frac-valid-pixels", doc=InputDocumentation(doc="The minimal fraction of valid pixels in a\nsliding diamond. Used to mask bins during\nboundary detection.  [default: 0.66]")), ToolInput(tag="in_min_dist_bad_bin", input_type=Int(optional=True), prefix="--min-dist-bad-bin", doc=InputDocumentation(doc="The minimal allowed distance to a bad bin.\nUsed to mask bins during boundary detection.\n[default: 0]")), ToolInput(tag="in_append_raw_scores", input_type=Boolean(optional=True), prefix="--append-raw-scores", doc=InputDocumentation(doc="Append columns with raw scores (sum_counts,\nsum_balanced, n_pixels) to the output table.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Report real-time progress.")), ToolInput(tag="in_in_path", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_window", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Specify output file name to store the\ninsulation in a tsv format."))], container="quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooltools_Diamond_Insulation_V0_1_0().translate("wdl")

