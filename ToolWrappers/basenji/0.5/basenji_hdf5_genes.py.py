from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, Boolean, String

Basenji_Hdf5_Genes_Py_V0_1_0 = CommandToolBuilder(tool="basenji_hdf5_genes.py", base_command=["basenji_hdf5_genes.py"], inputs=[ToolInput(tag="in_chromosome_lengths_file", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="Chromosome lengths file [Default: none]")), ToolInput(tag="in_sequence_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Sequence length [Default: 1024]")), ToolInput(tag="in_center_proportion_required", input_type=Float(optional=True), prefix="-c", doc=InputDocumentation(doc="Center proportion in which TSSs are required to be\n[Default: 0.333]")), ToolInput(tag="in_number_parallel_processes", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Number parallel processes to load data [Default: 1]")), ToolInput(tag="in_store_target_values", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Store target values, extracted from this list of WIG")), ToolInput(tag="in_w_five", input_type=Boolean(optional=True), prefix="--w5", doc=InputDocumentation(doc="Coverage files are w5 rather than BigWig [Default:\nFalse]\n")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="-w POOL_WIDTH        Average pooling width [Default: 1]"))], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Hdf5_Genes_Py_V0_1_0().translate("wdl")

