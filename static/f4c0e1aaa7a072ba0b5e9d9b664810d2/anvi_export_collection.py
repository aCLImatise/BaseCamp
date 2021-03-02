from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Anvi_Export_Collection_V0_1_0 = CommandToolBuilder(tool="anvi_export_collection", base_command=["anvi-export-collection"], inputs=[ToolInput(tag="in_pan_or_profile_db", input_type=String(optional=True), prefix="--pan-or-profile-db", doc=InputDocumentation(doc="Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts). (default: None)")), ToolInput(tag="in_collection_name", input_type=String(optional=True), prefix="--collection-name", doc=InputDocumentation(doc="Collection name. (default: None)")), ToolInput(tag="in_output_file_prefix", input_type=File(optional=True), prefix="--output-file-prefix", doc=InputDocumentation(doc="A prefix to be used while naming the output files (no\nfile type extensions please; just a prefix). (default:\nNone)")), ToolInput(tag="in_list_collections", input_type=Boolean(optional=True), prefix="--list-collections", doc=InputDocumentation(doc="Show available collections and exit. (default: False)")), ToolInput(tag="in_include_unbinned", input_type=File(optional=True), prefix="--include-unbinned", doc=InputDocumentation(doc="When this flag is used, anvi'o will also store in the\noutput file the items that do not appear in any of\nyour bins. This new bin will be called\n'UNBINNED_ITEMS_BIN'. Yes. The ugly name is\nintentional. (default: False)")), ToolInput(tag="in_collection_txt", input_type=String(), position=0, doc=InputDocumentation(doc="🍺 More on `anvi-export-collection`:"))], outputs=[ToolOutput(tag="out_output_file_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_prefix", type_hint=File()), doc=OutputDocumentation(doc="A prefix to be used while naming the output files (no\nfile type extensions please; just a prefix). (default:\nNone)")), ToolOutput(tag="out_include_unbinned", output_type=File(optional=True), selector=InputSelector(input_to_select="in_include_unbinned", type_hint=File()), doc=OutputDocumentation(doc="When this flag is used, anvi'o will also store in the\noutput file the items that do not appear in any of\nyour bins. This new bin will be called\n'UNBINNED_ITEMS_BIN'. Yes. The ugly name is\nintentional. (default: False)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Export_Collection_V0_1_0().translate("wdl")

