from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory, String, Int

Taxa_Assignment_Report_Py_V0_1_0 = CommandToolBuilder(tool="taxa_assignment_report.py", base_command=["taxa_assignment_report.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_tax_a_depth", input_type=File(optional=True), prefix="--taxa_depth", doc=InputDocumentation(doc="Depth of taxonomy to test for accuracy.  Depth that\nexceeds specifications in the taxonomy mapping file or\nreport will be ignored [default: 3]")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Specify output directory for reports, log. [default:\n.]")), ToolInput(tag="in_assignment_method", input_type=String(optional=True), prefix="--assignment_method", doc=InputDocumentation(doc="Taxonomic assignment method.  Currently only RDP\nclassifier implemented. [default: rdp]")), ToolInput(tag="in_min_confidence", input_type=Int(optional=True), prefix="--min_confidence", doc=InputDocumentation(doc="Minimum confidence for taxonomic assignment.\n[default: 0.8]")), ToolInput(tag="in_training_data_fp", input_type=File(optional=True), prefix="--training_data_fp", doc=InputDocumentation(doc="Training sequence data filepath for rdp classifier.\n[default: none]")), ToolInput(tag="in_tax_a_mapping_fp", input_type=File(optional=True), prefix="--taxa_mapping_fp", doc=InputDocumentation(doc="Taxonomy mapping filepath [REQUIRED]")), ToolInput(tag="in_fast_a_fp", input_type=File(optional=True), prefix="--fasta_fp", doc=InputDocumentation(doc="Fasta sequence file. [REQUIRED]\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Specify output directory for reports, log. [default:\n.]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxa_Assignment_Report_Py_V0_1_0().translate("wdl", allow_empty_container=True)

