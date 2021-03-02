from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Show_Snps_V0_1_0 = CommandToolBuilder(tool="show_snps", base_command=["show-snps"], inputs=[ToolInput(tag="in_report_snps_report", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="Do not report SNPs from alignments with an ambiguous\nmapping, i.e. only report SNPs where the [R] and [Q]\ncolumns equal 0 and do not output these columns")), ToolInput(tag="in_print_output_header", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="Do not print the output header")), ToolInput(tag="in_do_report_indels", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="Do not report indels")), ToolInput(tag="in_include_length_information", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Include sequence length information in the output")), ToolInput(tag="in_sort_output_lines_query_snp_positions", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Sort output lines by query IDs and SNP positions")), ToolInput(tag="in_sort_output_lines_reference_snp_positions", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Sort output lines by reference IDs and SNP positions")), ToolInput(tag="in_specify_alignments_report", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Specify which alignments to report by passing\n'show-coords' lines to stdin")), ToolInput(tag="in_switch_tabdelimited_format", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="Switch to tab-delimited format")), ToolInput(tag="in_include_characters_surrounding", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc="Include x characters of surrounding SNP context in the\noutput, default 0")), ToolInput(tag="in_delta_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Show_Snps_V0_1_0().translate("wdl", allow_empty_container=True)

