from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Boolean, Int

Fastqdownsample_V0_1_0 = CommandToolBuilder(tool="FastqDownsample", base_command=["FastqDownsample"], inputs=[ToolInput(tag="in_in_one", input_type=File(optional=True), prefix="-in1", doc=InputDocumentation(doc="Forward input gzipped FASTQ file(s).")), ToolInput(tag="in_in_two", input_type=File(optional=True), prefix="-in2", doc=InputDocumentation(doc="Reverse input gzipped FASTQ file(s).")), ToolInput(tag="in_percentage", input_type=Float(optional=True), prefix="-percentage", doc=InputDocumentation(doc="Percentage of reads to keep.")), ToolInput(tag="in_out_one", input_type=File(optional=True), prefix="-out1", doc=InputDocumentation(doc="Forward output gzipped FASTQ file.")), ToolInput(tag="in_out_two", input_type=File(optional=True), prefix="-out2", doc=InputDocumentation(doc="Reverse output gzipped FASTQ file.")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="Test mode: fix random number generator seed and write kept read names to STDOUT.\nDefault value: 'false'")), ToolInput(tag="in_compression_level", input_type=Int(optional=True), prefix="-compression_level", doc=InputDocumentation(doc="Output FASTQ compression level from 1 (fastest) to 9 (best compression).\nDefault value: '1'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out_one", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_one", type_hint=File()), doc=OutputDocumentation(doc="Forward output gzipped FASTQ file.")), ToolOutput(tag="out_out_two", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_two", type_hint=File()), doc=OutputDocumentation(doc="Reverse output gzipped FASTQ file."))], container="quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqdownsample_V0_1_0().translate("wdl")

