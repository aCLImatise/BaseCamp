from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Boolean

Prophyle_Classify_V0_1_0 = CommandToolBuilder(tool="prophyle_classify", base_command=["prophyle", "classify"], inputs=[ToolInput(tag="in_kmer_length", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length [detect automatically from the index]")), ToolInput(tag="in_measure_hhit_countcnormcoverage", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="measure: h1=hit count, c1=coverage, h2=norm.hit count,\nc2=norm.coverage [h1]")), ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="output format [sam]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="log file")), ToolInput(tag="in_incorporate_sequences_qualities", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="incorporate sequences and qualities into SAM records")), ToolInput(tag="in_annotate_assignments_using", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="annotate assignments (using tax. information from NHX)")), ToolInput(tag="in_replace_read_assignments", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="replace read assignments by their LCA")), ToolInput(tag="in_replace_kmer_matches", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc="replace k-mer matches by their LCA")), ToolInput(tag="in_mimic_kraken_equivalent", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="mimic Kraken (equivalent to '-m h1 -f kraken -L -X')")), ToolInput(tag="in_use_c_impl", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="use C++ impl. of the assignment algorithm (experimental)")), ToolInput(tag="in_force_restarted_mode", input_type=Boolean(optional=True), prefix="-K", doc=InputDocumentation(doc="force restarted search mode")), ToolInput(tag="in_advanced_configuration_json", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[STR [STR ...]]  advanced configuration (a JSON dictionary)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Classify_V0_1_0().translate("wdl", allow_empty_container=True)

