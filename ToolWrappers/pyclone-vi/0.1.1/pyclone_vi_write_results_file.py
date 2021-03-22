from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pyclone_Vi_Write_Results_File_V0_1_0 = CommandToolBuilder(tool="pyclone_vi_write_results_file", base_command=["pyclone-vi", "write-results-file"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--in-file", doc=InputDocumentation(doc="Path to HDF5 format file produced by the `fit` command.\n[required]")), ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out-file", doc=InputDocumentation(doc="Path to where results will be written in tsv format.\n[required]")), ToolInput(tag="in_compress", input_type=File(optional=True), prefix="--compress", doc=InputDocumentation(doc="If set the output file will be compressed using gzip."))], outputs=[ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="Path to where results will be written in tsv format.\n[required]")), ToolOutput(tag="out_compress", output_type=File(optional=True), selector=InputSelector(input_to_select="in_compress", type_hint=File()), doc=OutputDocumentation(doc="If set the output file will be compressed using gzip."))], container="quay.io/biocontainers/pyclone-vi:0.1.1--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyclone_Vi_Write_Results_File_V0_1_0().translate("wdl")

