from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Datafunk_Process_Gisaid_Data_V0_1_0 = CommandToolBuilder(tool="datafunk_process_gisaid_data", base_command=["datafunk", "process_gisaid_data"], inputs=[ToolInput(tag="in_input_json", input_type=String(optional=True), prefix="--input-json", doc=InputDocumentation(doc="Gisaid json data")), ToolInput(tag="in_input_metadata", input_type=String(optional=True), prefix="--input-metadata", doc=InputDocumentation(doc="previous metadata (can be 'False')")), ToolInput(tag="in_output_fast_a", input_type=File(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="fasta format file to write.")), ToolInput(tag="in_output_metadata", input_type=File(optional=True), prefix="--output-metadata", doc=InputDocumentation(doc="metadata file to write.")), ToolInput(tag="in_exclude_file", input_type=File(optional=True), prefix="--exclude-file", doc=InputDocumentation(doc="A file that contains (anywhere) EPI_ISL_###### IDs to\nexclude (can provide many files, e.g. -e FILE1 -e\nFILE2 ...)")), ToolInput(tag="in_exclude_uk", input_type=Boolean(optional=True), prefix="--exclude-uk", doc=InputDocumentation(doc="Excludes GISAID entries from England, Ireland,\nScotland or Wales from being written to fasta (default\nis to include them)")), ToolInput(tag="in_exclude_undated", input_type=Boolean(optional=True), prefix="--exclude-undated", doc=InputDocumentation(doc="Excludes GISAID entries with an incomplete date from\nbeing written to fasta (default is to include them)")), ToolInput(tag="in_include_subsampled", input_type=Boolean(optional=True), prefix="--include-subsampled", doc=InputDocumentation(doc="Write GISAID entries previously flagged as duplicated\nto fasta (default is to exclude them)")), ToolInput(tag="in_include_omitted_file", input_type=Boolean(optional=True), prefix="--include-omitted-file", doc=InputDocumentation(doc="Write GISAID entries excluded in --exclude-file FILE\nto fasta (default is to exclude them)\n"))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Process_Gisaid_Data_V0_1_0().translate("wdl")

