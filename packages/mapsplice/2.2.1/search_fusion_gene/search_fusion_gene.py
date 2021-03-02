from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Search_Fusion_Gene_V0_1_0 = CommandToolBuilder(tool="search_fusion_gene", base_command=["search_fusion_gene"], inputs=[ToolInput(tag="in_gene_annotation_file", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc=":          gene annotation file name")), ToolInput(tag="in_fusion_junction_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=":          fusion junction file name")), ToolInput(tag="in_f_header", input_type=Boolean(optional=True), prefix="-f_header", doc=InputDocumentation(doc=":   skip header of fusion junction file")), ToolInput(tag="in_normal_junction_file", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=":          normal junction file name")), ToolInput(tag="in_n_header", input_type=Boolean(optional=True), prefix="-n_header", doc=InputDocumentation(doc=":   skip header of normal junction file")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=":          output file name")), ToolInput(tag="in_comparison_range_default", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=":          comparison range, default [0]"))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc=":          output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Search_Fusion_Gene_V0_1_0().translate("wdl", allow_empty_container=True)

