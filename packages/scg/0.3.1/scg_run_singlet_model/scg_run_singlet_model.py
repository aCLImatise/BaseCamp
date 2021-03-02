from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Scg_Run_Singlet_Model_V0_1_0 = CommandToolBuilder(tool="scg_run_singlet_model", base_command=["scg", "run_singlet_model"], inputs=[ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config_file", doc=InputDocumentation(doc="Path to YAML format configuration file.")), ToolInput(tag="in_lower_bound_file", input_type=File(optional=True), prefix="--lower_bound_file", doc=InputDocumentation(doc="Path of file where lower bound will be written.")), ToolInput(tag="in_out_dir", input_type=File(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Path where output files will be written.")), ToolInput(tag="in_convergence_tolerance", input_type=String(optional=True), prefix="--convergence_tolerance", doc=InputDocumentation(doc="Set random seed so results can be reproduced. By\ndefault a random seed is chosen.")), ToolInput(tag="in_labels_file", input_type=File(optional=True), prefix="--labels_file", doc=InputDocumentation(doc="Path of file with initial labels to use.")), ToolInput(tag="in_use_position_specific_error_rate", input_type=Boolean(optional=True), prefix="--use_position_specific_error_rate", doc=InputDocumentation(doc="If an error rate will be estimated for each position.")), ToolInput(tag="in_samples_file", input_type=File(optional=True), prefix="--samples_file", doc=InputDocumentation(doc="Path mapping cells to samples. If set each sample will\nhave a separate mixing proportion.\n")), ToolInput(tag="in_single", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cell", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_genotype_r", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_run_singlet_model", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Path where output files will be written."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scg_Run_Singlet_Model_V0_1_0().translate("wdl", allow_empty_container=True)

