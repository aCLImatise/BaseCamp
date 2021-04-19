from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, File

Viewbs_Methcoverage_V0_1_0 = CommandToolBuilder(tool="ViewBS_MethCoverage", base_command=["ViewBS", "MethCoverage"], inputs=[ToolInput(tag="in_reference", input_type=Boolean(optional=True), prefix="--reference", doc=InputDocumentation(doc="[required]\n- reference genome in fasta file.")), ToolInput(tag="in_sample", input_type=Boolean(optional=True), prefix="--sample", doc=InputDocumentation(doc="[required]\n- Provide the sample information. [Format: methlationfile,samplename]\nIt is possible to specify more than one sample pair by using the options\n--sample more than once. The methylation information can also be read from\na TEXT file. Instead of giving an explicit sample information pairs,\nyou need to write 'file:' followed by the name of the TEXT file.\nSee details at: https://github.com/readbio/ViewBS")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="[optional]\n- Provide the output directory. [default: ./]")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="[optional]\n- Provide prefix for the output file. [default: MethCoverage]")), ToolInput(tag="in_height", input_type=Boolean(optional=True), prefix="--height", doc=InputDocumentation(doc="[optional]\n- Height of PDF figure. Unit is cm. [default: 10]")), ToolInput(tag="in_width", input_type=Boolean(optional=True), prefix="--width", doc=InputDocumentation(doc="[optional]\n- Width of PDF figure. Unit is cm. [default: 10]\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="[optional]\n- Provide the output directory. [default: ./]")), ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="[optional]\n- Provide prefix for the output file. [default: MethCoverage]"))], container="quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Viewbs_Methcoverage_V0_1_0().translate("wdl")

