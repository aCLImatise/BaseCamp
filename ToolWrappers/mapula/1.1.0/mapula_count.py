from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Mapula_Count_V0_1_0 = CommandToolBuilder(tool="mapula_count", base_command=["mapula", "count"], inputs=[ToolInput(tag="in_reference_files_format", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ [ ...]]  Reference .fasta file(s). Format name=path_to_ref.")), ToolInput(tag="in_expected_counts_expectedcolumns", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[ [ ...]]  Expected counts CSV(s). Format name=path_to_counts. Expected\ncolumns: reference,expected_count.")), ToolInput(tag="in_outputs_sam_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Outputs a sam file from the parsed alignments. Use - for\npiping out. (Default: None).")), ToolInput(tag="in_sets_formats_results", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Sets the format(s) in which to output results. [Choices: csv,\njson, all] (Default: csv).")), ToolInput(tag="in_split_criteria_space", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ ...]    Split by these criteria, space separated. [Choices: group\nrun_id barcode read_group reference] (Default: group run_id\nbarcode).")), ToolInput(tag="in_prefix_there_are", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Prefix of the output files, if there are any.")), ToolInput(tag="in_map_ula", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outputs_sam_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outputs_sam_file", type_hint=File()), doc=OutputDocumentation(doc="Outputs a sam file from the parsed alignments. Use - for\npiping out. (Default: None)."))], container="quay.io/biocontainers/mapula:1.1.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mapula_Count_V0_1_0().translate("wdl")

