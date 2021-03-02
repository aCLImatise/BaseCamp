from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Datafunk_Set_Uniform_Header_V0_1_0 = CommandToolBuilder(tool="datafunk_set_uniform_header", base_command=["datafunk", "set_uniform_header"], inputs=[ToolInput(tag="in_var_0", input_type=String(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="Input FASTA")), ToolInput(tag="in_var_1", input_type=String(optional=True), prefix="--input-metadata", doc=InputDocumentation(doc="Input CSV or TSV")), ToolInput(tag="in_var_2", input_type=String(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="Input FASTA")), ToolInput(tag="in_output_metadata", input_type=String(optional=True), prefix="--output-metadata", doc=InputDocumentation(doc="Input CSV or TSV")), ToolInput(tag="in_gi_said", input_type=Boolean(optional=True), prefix="--gisaid", doc=InputDocumentation(doc="Input data is from GISAID")), ToolInput(tag="in_cog_uk", input_type=Boolean(optional=True), prefix="--cog-uk", doc=InputDocumentation(doc="Input data is from COG-UK")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Log file to use (otherwise uses stdout)")), ToolInput(tag="in_column_name", input_type=String(optional=True), prefix="--column-name", doc=InputDocumentation(doc="Name of column in metadata corresponding to fasta\nheader")), ToolInput(tag="in_index_column", input_type=String(optional=True), prefix="--index-column", doc=InputDocumentation(doc="Name of column in metadata to parse for string\nmatching with fasta header")), ToolInput(tag="in_extended", input_type=Boolean(optional=True), prefix="--extended", doc=InputDocumentation(doc="Longer fasta name")), ToolInput(tag="in__inputmetadata", input_type=String(), position=0, doc=InputDocumentation(doc="--input-metadata")), ToolInput(tag="in__outputfasta", input_type=String(), position=1, doc=InputDocumentation(doc="--output-fasta")), ToolInput(tag="in__outputmetadata", input_type=String(), position=2, doc=InputDocumentation(doc="--output-metadata"))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Set_Uniform_Header_V0_1_0().translate("wdl")

