from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Array, String, Boolean, File

Megalodon_Extras_Calibrate_Generate_Modified_Base_Stats_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_calibrate_generate_modified_base_stats", base_command=["megalodon_extras", "calibrate", "generate_modified_base_stats"], inputs=[ToolInput(tag="in_control_megalodon_results_dir", input_type=Directory(optional=True), prefix="--control-megalodon-results-dir", doc=InputDocumentation(doc="Megalodon output directory with modified base control\nsample.")), ToolInput(tag="in_exclude_modified_bases", input_type=Array(t=String(), optional=True), prefix="--exclude-modified-bases", doc=InputDocumentation(doc="Set of modified bases (single letter codes) to\nexclude.")), ToolInput(tag="in_modified_bases_set", input_type=Array(t=String(), optional=True), prefix="--modified-bases-set", doc=InputDocumentation(doc="Only process these modified bases (single letter\ncodes).")), ToolInput(tag="in_ground_truth_data", input_type=String(optional=True), prefix="--ground-truth-data", doc=InputDocumentation(doc="Ground truth csv with (chrm, strand, pos, is_mod)\nvalues.")), ToolInput(tag="in_strand_specific_sites", input_type=Boolean(optional=True), prefix="--strand-specific-sites", doc=InputDocumentation(doc="Sites in --ground-truth-data are strand-specific. If\nnot set, strand is ignored.")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--out-filename", doc=InputDocumentation(doc="Output filename for text summary. Default:\nmod_calibration_statistics.npz")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress progress information."))], outputs=[ToolOutput(tag="out_control_megalodon_results_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_control_megalodon_results_dir", type_hint=File()), doc=OutputDocumentation(doc="Megalodon output directory with modified base control\nsample.")), ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="Output filename for text summary. Default:\nmod_calibration_statistics.npz"))], container="quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Calibrate_Generate_Modified_Base_Stats_V0_1_0().translate("wdl")

