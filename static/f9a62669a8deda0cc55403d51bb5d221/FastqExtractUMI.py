from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Fastqextractumi_V0_1_0 = CommandToolBuilder(tool="FastqExtractUMI", base_command=["FastqExtractUMI"], inputs=[ToolInput(tag="in_in_one", input_type=File(optional=True), prefix="-in1", doc=InputDocumentation(doc="Input FASTQ file 1.")), ToolInput(tag="in_in_two", input_type=File(optional=True), prefix="-in2", doc=InputDocumentation(doc="Input FASTQ file 2.")), ToolInput(tag="in_out_one", input_type=File(optional=True), prefix="-out1", doc=InputDocumentation(doc="Output filename for read 1 FASTQ.")), ToolInput(tag="in_out_two", input_type=File(optional=True), prefix="-out2", doc=InputDocumentation(doc="Output filename for read 2 FASTQ.")), ToolInput(tag="in_cut_one", input_type=Int(optional=True), prefix="-cut1", doc=InputDocumentation(doc="Number of bases from the head of read 1 to use as UMI.\nDefault value: '0'")), ToolInput(tag="in_cut_two", input_type=Int(optional=True), prefix="-cut2", doc=InputDocumentation(doc="Number of bases from the head of read 2 to use as UMI.\nDefault value: '0'")), ToolInput(tag="in_compression_level", input_type=Int(optional=True), prefix="-compression_level", doc=InputDocumentation(doc="Output FASTQ compression level from 1 (fastest) to 9 (best compression).\nDefault value: '1'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out_one", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_one", type_hint=File()), doc=OutputDocumentation(doc="Output filename for read 1 FASTQ.")), ToolOutput(tag="out_out_two", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_two", type_hint=File()), doc=OutputDocumentation(doc="Output filename for read 2 FASTQ."))], container="quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqextractumi_V0_1_0().translate("wdl")

