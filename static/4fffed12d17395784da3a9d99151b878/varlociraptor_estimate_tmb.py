from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Varlociraptor_Estimate_Tmb_V0_1_0 = CommandToolBuilder(tool="varlociraptor_estimate_tmb", base_command=["varlociraptor", "estimate", "tmb"], inputs=[ToolInput(tag="in_coding_genome_size", input_type=Int(optional=True), prefix="--coding-genome-size", doc=InputDocumentation(doc="Size (in bases) of the covered coding genome. [default: 3e7]")), ToolInput(tag="in_plot_mode", input_type=String(optional=True), prefix="--plot-mode", doc=InputDocumentation(doc="How to plot (as stratified curve or as histogram). [possible values: hist, curve]")), ToolInput(tag="in_somatic_tumor_events", input_type=String(optional=True), prefix="--somatic-tumor-events", doc=InputDocumentation(doc="...\nEvents to consider (e.g. SOMATIC_TUMOR). [default: SOMATIC_TUMOR]")), ToolInput(tag="in_tumor_sample", input_type=String(optional=True), prefix="--tumor-sample", doc=InputDocumentation(doc="Name of the tumor sample in the given VCF/BCF. [default: tumor]\n")), ToolInput(tag="in_calls_dot_bcf_vertical_line_vg_two_svg", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/varlociraptor:3.0.1--hd302352_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varlociraptor_Estimate_Tmb_V0_1_0().translate("wdl")

