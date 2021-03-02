from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Float

Pyprophet_Export_Compound_V0_1_0 = CommandToolBuilder(tool="pyprophet_export_compound", base_command=["pyprophet", "export-compound"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="PyProphet input file.  [required]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output TSV/CSV (matrix, legacy_merged) file.")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="[matrix|legacy_merged|score_plots]\nExport format, either matrix, legacy_merged\n(PyProphet) or score_plots format.\n[default: legacy_merged]")), ToolInput(tag="in_no_csv", input_type=Boolean(optional=True), prefix="--no-csv", doc=InputDocumentation(doc="Export CSV instead of TSV file.  [default:\nFalse]")), ToolInput(tag="in_max_rs_peak_group_q_value", input_type=Float(optional=True), prefix="--max_rs_peakgroup_qvalue", doc=InputDocumentation(doc="[format: matrix/legacy] Filter results to\nmaximum run-specific peak group-level\nq-value.  [default: 0.05]"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output TSV/CSV (matrix, legacy_merged) file."))], container="quay.io/biocontainers/pyprophet:2.1.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyprophet_Export_Compound_V0_1_0().translate("wdl")

