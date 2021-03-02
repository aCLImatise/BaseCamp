from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int, Directory

Mamotif_Integrate_V0_1_0 = CommandToolBuilder(tool="mamotif_integrate", base_command=["mamotif", "integrate"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose log messages.")), ToolInput(tag="in_manorm_result_abmavaluesxls", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="MAnorm result for sample A or B (A/B_MAvalues.xls).")), ToolInput(tag="in_motifscan_result_sample", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="MotifScan result for sample A or B\n(motif_sites_number.xls).")), ToolInput(tag="in_negative", input_type=Boolean(optional=True), prefix="--negative", doc=InputDocumentation(doc="Convert M=log2(A/B) to -M=log2(B/A). Required when\nfinding co-factors for sample B.")), ToolInput(tag="in_genome_name_required", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="Genome name. Required if `--split` is enabled.")), ToolInput(tag="in_split", input_type=Boolean(optional=True), prefix="--split", doc=InputDocumentation(doc="Split genomic regions into promoter/distal regions and\nrun separately.")), ToolInput(tag="in_upstream", input_type=Int(optional=True), prefix="--upstream", doc=InputDocumentation(doc="TSS upstream distance for promoters. Default: 4000")), ToolInput(tag="in_downstream", input_type=Int(optional=True), prefix="--downstream", doc=InputDocumentation(doc="TSS downstream distance for promoters. Default: 2000")), ToolInput(tag="in_correction", input_type=String(optional=True), prefix="--correction", doc=InputDocumentation(doc="Method for multiple testing correction. Default:\nbenjamin")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Directory to write output files."))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory to write output files."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mamotif_Integrate_V0_1_0().translate("wdl", allow_empty_container=True)

