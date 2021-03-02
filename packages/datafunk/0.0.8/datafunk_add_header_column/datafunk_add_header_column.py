from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Array

Datafunk_Add_Header_Column_V0_1_0 = CommandToolBuilder(tool="datafunk_add_header_column", base_command=["datafunk", "add_header_column"], inputs=[ToolInput(tag="in_input_fasta", input_type=String(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="Input FASTA")), ToolInput(tag="in_input_csv_tsv", input_type=String(optional=True), prefix="--input-metadata", doc=InputDocumentation(doc="Input CSV or TSV")), ToolInput(tag="in_output_csv", input_type=String(optional=True), prefix="--output-metadata", doc=InputDocumentation(doc="Output CSV")), ToolInput(tag="in_output_fast_a", input_type=String(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="Output FASTA")), ToolInput(tag="in_gi_said", input_type=Boolean(optional=True), prefix="--gisaid", doc=InputDocumentation(doc="Input data is from GISAID")), ToolInput(tag="in_cog_uk", input_type=Boolean(optional=True), prefix="--cog-uk", doc=InputDocumentation(doc="Input data is from COG-UK")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Log file to use (otherwise uses stdout)")), ToolInput(tag="in_column_name", input_type=String(optional=True), prefix="--column-name", doc=InputDocumentation(doc="Name of column in metadata corresponding to fasta\nheader")), ToolInput(tag="in_columns", input_type=Array(t=String(), optional=True), prefix="--columns", doc=InputDocumentation(doc="List of columns in metadata to parse for string\nmatching with fasta header\n")), ToolInput(tag="in__inputmetadata", input_type=String(), position=0, doc=InputDocumentation(doc="--input-metadata")), ToolInput(tag="in__outputmetadata", input_type=String(), position=1, doc=InputDocumentation(doc="--output-metadata")), ToolInput(tag="in__outputfasta", input_type=String(), position=2, doc=InputDocumentation(doc="--output-fasta"))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Add_Header_Column_V0_1_0().translate("wdl")

