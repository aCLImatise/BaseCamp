from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Ncbi_Database_Fetcher_Sh_V0_1_0 = CommandToolBuilder(tool="ncbi_database_fetcher.sh", base_command=["ncbi_database_fetcher.sh"], inputs=[ToolInput(tag="in_key_terms_included", input_type=String(optional=True), prefix="-y", doc=InputDocumentation(doc="of key terms separated by space to be INCLUDED in sequences title")), ToolInput(tag="in_key_terms_excluded", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="of key terms separated by space to be EXCLUDED in sequences title")), ToolInput(tag="in_to_filter", input_type=String(optional=True), prefix="-O", doc=InputDocumentation(doc="to filter")), ToolInput(tag="in_type_default_nucleotide", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="type, default nucleotide")), ToolInput(tag="in_directory_optional_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="directory (optional). By default the file is placed in cwd")), ToolInput(tag="in_name_optional_default", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="name (optional). By default is the first term used as query")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="usage message"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ncbi_Database_Fetcher_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

