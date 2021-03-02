from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Fastqextractbarcode_V0_1_0 = CommandToolBuilder(tool="FastqExtractBarcode", base_command=["FastqExtractBarcode"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="input fastq file1.")), ToolInput(tag="in_out_main", input_type=File(optional=True), prefix="-out_main", doc=InputDocumentation(doc="output filename for main fastq.")), ToolInput(tag="in_out_index", input_type=File(optional=True), prefix="-out_index", doc=InputDocumentation(doc="output filename for index fastq.\nDefault value: 'index.fastq.gz'")), ToolInput(tag="in_cut", input_type=Int(optional=True), prefix="-cut", doc=InputDocumentation(doc="number of bases from the beginning of reads to use as barcodes.\nDefault value: '0'")), ToolInput(tag="in_compression_level", input_type=Int(optional=True), prefix="-compression_level", doc=InputDocumentation(doc="Output FASTQ compression level from 1 (fastest) to 9 (best compression).\nDefault value: '1'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out_main", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_main", type_hint=File()), doc=OutputDocumentation(doc="output filename for main fastq.")), ToolOutput(tag="out_out_index", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_index", type_hint=File()), doc=OutputDocumentation(doc="output filename for index fastq.\nDefault value: 'index.fastq.gz'"))], container="quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqextractbarcode_V0_1_0().translate("wdl")

