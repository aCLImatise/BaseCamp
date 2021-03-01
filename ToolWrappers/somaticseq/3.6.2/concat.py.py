from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Concat_Py_V0_1_0 = CommandToolBuilder(tool="concat.py", base_command=["concat.py"], inputs=[ToolInput(tag="in_in_files", input_type=Boolean(optional=True), prefix="-infiles", doc=InputDocumentation(doc="[INPUT_FILES [INPUT_FILES ...]], --input-files [INPUT_FILES [INPUT_FILES ...]]\nInput files (default: None)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Output file (default: None)")), ToolInput(tag="in_out_files", input_type=Boolean(optional=True), prefix="-outfiles", doc=InputDocumentation(doc="[OUTPUT_FILES [OUTPUT_FILES ...]], --output-files [OUTPUT_FILES [OUTPUT_FILES ...]]\nOutput files for spreader (default: None)")), ToolInput(tag="in_chunk_size", input_type=Int(optional=True), prefix="--chunk-size", doc=InputDocumentation(doc="In --spread mode, the number of lines to be written\ninto the output file each time. By default chunk=4 by\ndefault for fastq files, i.e., every 4 lines make up\none read record. (default: 4)")), ToolInput(tag="in_threads", input_type=String(optional=True), prefix="--threads", doc=InputDocumentation(doc="only invoked in -spread -bgzip when bgzip compress of\noutput files can be parallelized (default: None)")), ToolInput(tag="in_spread", input_type=Boolean(optional=True), prefix="--spread", doc=InputDocumentation(doc="Spread content into multiple files. (default: False)")), ToolInput(tag="in_b_gzip_output", input_type=Boolean(optional=True), prefix="--bgzip-output", doc=InputDocumentation(doc="compress the output files (default: False)\n")), ToolInput(tag="in_input_files", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file (default: None)"))], container="quay.io/biocontainers/somaticseq:3.6.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Concat_Py_V0_1_0().translate("wdl")

