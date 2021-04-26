from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Filter_Fasta_Sh_V0_1_0 = CommandToolBuilder(tool="filter_fasta.sh", base_command=["filter_fasta.sh"], inputs=[ToolInput(tag="in_file_to_filter", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file to filter")), ToolInput(tag="in_directory_optional_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="directory (optional). By default the file is replaced in the same location")), ToolInput(tag="in_name_optional_default", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="name (optional). By default is the same as -f file with .fasta extension")), ToolInput(tag="in_key_terms_separated", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="of key terms separated by space")), ToolInput(tag="in_term_discard_sequences", input_type=String(optional=True), prefix="-N", doc=InputDocumentation(doc="term to discard sequences with terms (Negative filter)")), ToolInput(tag="in_filter_filter_file", input_type=File(optional=True), prefix="-G", doc=InputDocumentation(doc="filter: filter any file with a list of keys")), ToolInput(tag="in_list_terms_filter", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="with a list of terms to filter")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container="quay.io/biocontainers/plasmidid:1.6.5--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Fasta_Sh_V0_1_0().translate("wdl")

