from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Gridss_Somatic_Filter_V0_1_0 = CommandToolBuilder(tool="gridss_somatic_filter", base_command=["gridss_somatic_filter"], inputs=[ToolInput(tag="in_gc", input_type=Boolean(optional=True), prefix="--gc", doc=InputDocumentation(doc="Perform garbage collection after freeing of\nlarge objects.")), ToolInput(tag="in_opts", input_type=Boolean(optional=True), prefix="--opts", doc=InputDocumentation(doc="RDS file containing argument values")), ToolInput(tag="in_pond_ir", input_type=Boolean(optional=True), prefix="--pondir", doc=InputDocumentation(doc="Directory containing Panel Of Normal bed/bedpe\nused to filter FP somatic events. Use\ngridss.GeneratePonBedpe to generate the PON.")), ToolInput(tag="in_ref", input_type=Boolean(optional=True), prefix="--ref", doc=InputDocumentation(doc="Reference genome to use. Must be a valid\ninstalled BSgenome package [default: ]")), ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="GRIDSS VCF")), ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="High confidence somatic subset")), ToolInput(tag="in_full_output", input_type=Boolean(optional=True), prefix="--fulloutput", doc=InputDocumentation(doc="Full call set excluding obviously germline call.")), ToolInput(tag="in_plot_dir", input_type=Directory(optional=True), prefix="--plotdir", doc=InputDocumentation(doc="Output directory for plots [default: ]")), ToolInput(tag="in_normal_ordinal", input_type=Boolean(optional=True), prefix="--normalordinal", doc=InputDocumentation(doc="Ordinal of matching normal sample in the VCF\n[default: 1]")), ToolInput(tag="in_tumour_ordinal", input_type=Boolean(optional=True), prefix="--tumourordinal", doc=InputDocumentation(doc="Ordinal of tumour sample(s) in the VCF. Defaults\nto all samples not listed as matched normals")), ToolInput(tag="in_script_dir", input_type=Boolean(optional=True), prefix="--scriptdir", doc=InputDocumentation(doc="Path to libgridss.R script [default: ./]"))], outputs=[ToolOutput(tag="out_plot_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_plot_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for plots [default: ]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gridss_Somatic_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

