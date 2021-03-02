from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Taxon_Utils_To_Hdf_V0_1_0 = CommandToolBuilder(tool="taxon_utils_to_hdf", base_command=["taxon-utils", "to_hdf"], inputs=[ToolInput(tag="in_table_name", input_type=String(optional=True), prefix="--table-name", doc=InputDocumentation(doc="Name of the table/storage to use  [default: taxa]")), ToolInput(tag="in_overwrite", input_type=Boolean(optional=True), prefix="--overwrite", doc=InputDocumentation(doc="Overwrite the file, instead of appending to it")), ToolInput(tag="in_index_size", input_type=Int(optional=True), prefix="--index-size", doc=InputDocumentation(doc="Maximum number of characters for the gene_id\n[default: 12]")), ToolInput(tag="in_chunk_size", input_type=Int(optional=True), prefix="--chunk-size", doc=InputDocumentation(doc="Chunk size to use when reading the input file\n[default: 5000000]")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxon_Utils_To_Hdf_V0_1_0().translate("wdl")

