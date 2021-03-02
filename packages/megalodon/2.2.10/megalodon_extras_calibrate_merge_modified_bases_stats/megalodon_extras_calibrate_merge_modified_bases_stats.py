from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Megalodon_Extras_Calibrate_Merge_Modified_Bases_Stats_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_calibrate_merge_modified_bases_stats", base_command=["megalodon_extras", "calibrate", "merge_modified_bases_stats"], inputs=[ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--out-filename", doc=InputDocumentation(doc="Filename to output calibration statistics values.\nDefault: mod_calibration_statistics.npz")), ToolInput(tag="in_overwrite", input_type=File(optional=True), prefix="--overwrite", doc=InputDocumentation(doc="Overwrite --out-filename if it exists.")), ToolInput(tag="in_mod_calib_stats_fn", input_type=String(), position=0, doc=InputDocumentation(doc="Modified base calibration statistics filenames."))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="Filename to output calibration statistics values.\nDefault: mod_calibration_statistics.npz")), ToolOutput(tag="out_overwrite", output_type=File(optional=True), selector=InputSelector(input_to_select="in_overwrite", type_hint=File()), doc=OutputDocumentation(doc="Overwrite --out-filename if it exists."))], container="quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Calibrate_Merge_Modified_Bases_Stats_V0_1_0().translate("wdl")

