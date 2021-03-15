from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Vcfleftnormalize_V0_1_0 = CommandToolBuilder(tool="VcfLeftNormalize", base_command=["VcfLeftNormalize"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input VCF file. If unset, reads from STDIN.\nDefault value: ''")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output VCF or VCF or VCF.GZ file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="-ref", doc=InputDocumentation(doc="Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used.\nDefault value: ''")), ToolInput(tag="in_compression_level", input_type=Int(optional=True), prefix="-compression_level", doc=InputDocumentation(doc="Output VCF compression level from 1 (fastest) to 9 (best compression). If unset, an unzipped VCF is written.\nDefault value: '0'")), ToolInput(tag="in_stream", input_type=Boolean(optional=True), prefix="-stream", doc=InputDocumentation(doc="Allows to stream the input and output VCF without loading the whole file into memory. Only supported with uncompressed VCF files.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output VCF or VCF or VCF.GZ file. If unset, writes to STDOUT.\nDefault value: ''"))], container="quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfleftnormalize_V0_1_0().translate("wdl")

