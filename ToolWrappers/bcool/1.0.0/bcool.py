from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Bcool_V0_1_0 = CommandToolBuilder(tool="bcool", base_command=["bcool"], inputs=[ToolInput(tag="in_mandatory_input_fasta", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc="(MANDATORY) input fasta read files. Several read files must be concatenated")), ToolInput(tag="in_path_store_results", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Path to store the results (Default = current directory)")), ToolInput(tag="in_number_cores_used", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Number of cores used (Default = 1)")), ToolInput(tag="in_kmer_size_auto", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer size (Default = AUTO)")), ToolInput(tag="in_kmers_present_less", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="k-mers present strictly less than this number of times in the dataset will be discarded (Default = 2)")), ToolInput(tag="in_unitig_coverage_auto", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc="Unitig Coverage for cleaning (Default = AUTO)")), ToolInput(tag="in_advanced_maximum_number", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="(ADVANCED) Maximum number of corrected bases (Default = 10)")), ToolInput(tag="in_advanced_index_one", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="(ADVANCED) index one out of i anchors to reduce memory consumption (Default = 1)")), ToolInput(tag="in_advanced_maximum_occurence", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="(ADVANCED) Maximum occurence of an anchor (Default = 1), better correction for repetitive genome but slower")), ToolInput(tag="in_advanced_print_command", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="(ADVANCED) Print command lines"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcool_V0_1_0().translate("wdl", allow_empty_container=True)

