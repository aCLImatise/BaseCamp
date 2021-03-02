from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Compute_Stats_V0_1_0 = CommandToolBuilder(tool="compute_stats", base_command=["compute-stats"], inputs=[ToolInput(tag="in_input_filename", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_measured_spec_dir", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_predicted_spec_dir", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_num_spectra_per_mol", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_ppm_mass_to_l", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_abs_mass_to_l", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_filename", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_cumulative_intensity_thresh", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_apply_cutoffs", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_clean_target_spectra", input_type=String(), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_quanti_se_spectra_dec_pl", input_type=String(), position=10, doc=InputDocumentation(doc="")), ToolInput(tag="in_num_groups", input_type=String(), position=11, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compute_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

