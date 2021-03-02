from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Idemux_V0_1_0 = CommandToolBuilder(tool="idemux", base_command=["idemux"], inputs=[ToolInput(tag="in_i_five_rc", input_type=Boolean(optional=True), prefix="--i5-rc", doc=InputDocumentation(doc="when the i5 barcode has been sequenced as reverse\ncomplement. make sure to enter non-reverse complement\nsequences in the barcode file")), ToolInput(tag="in_i_one_start", input_type=Int(optional=True), prefix="--i1-start", doc=InputDocumentation(doc="start position of the i1 index (1-based) on read 2\n(default: 11)")), ToolInput(tag="in_r_one", input_type=Int(optional=True), prefix="--r1", doc=InputDocumentation(doc="gzipped read 1 fastq file")), ToolInput(tag="in_r_two", input_type=Int(optional=True), prefix="--r2", doc=InputDocumentation(doc="path to gzipped read 2 fastq file")), ToolInput(tag="in_sample_sheet", input_type=File(optional=True), prefix="--sample-sheet", doc=InputDocumentation(doc="csv file describing sample names, and barcode\ncombinations")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="where to write the output files"))], outputs=[], container="quay.io/biocontainers/idemux:0.1.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Idemux_V0_1_0().translate("wdl")

