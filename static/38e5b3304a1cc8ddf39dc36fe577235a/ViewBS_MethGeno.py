from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Viewbs_Methgeno_V0_1_0 = CommandToolBuilder(tool="ViewBS_MethGeno", base_command=["ViewBS", "MethGeno"], inputs=[ToolInput(tag="in_genome_length", input_type=Boolean(optional=True), prefix="--genomeLength", doc=InputDocumentation(doc="[required]\n- chromosome length information. Can be generated using 'samtools faidx\nref.fa'")), ToolInput(tag="in_sample", input_type=Boolean(optional=True), prefix="--sample", doc=InputDocumentation(doc="[required]\n- Provide the sample information. [Format: methlationfile,samplename]\nIt is possible to specify more than one sample pair by using the options\n--sample more than once. The methylation information can also be read from\na TEXT file. Instead of giving an explicit sample information pairs,\nyou need to write 'file:' followed by the name of the TEXT file.\nSee details at: https://github.com/readbio/ViewBS")), ToolInput(tag="in_win", input_type=Boolean(optional=True), prefix="--win", doc=InputDocumentation(doc="[optional]\n- Window size. Default: 500000")), ToolInput(tag="in_step", input_type=Boolean(optional=True), prefix="--step", doc=InputDocumentation(doc="[optional]\n- Step size. Default: 500000")), ToolInput(tag="in_minlength", input_type=Boolean(optional=True), prefix="--minLength", doc=InputDocumentation(doc="[optional]\n- Minimum length for a chromosome to output. Default: 0")), ToolInput(tag="in_maximum_number_chromosome", input_type=Boolean(optional=True), prefix="--maxChromNumber", doc=InputDocumentation(doc="[optional]\n- Maximum number of chromosome IDs with lenght > 'minLength'.\nDefault: 60.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="- Prefix for the output  [Default: MethGeno]")), ToolInput(tag="in_height", input_type=Boolean(optional=True), prefix="--height", doc=InputDocumentation(doc="[optional]\n- Height of PDF figure. Unit is cm. [default: 10]")), ToolInput(tag="in_width", input_type=Boolean(optional=True), prefix="--width", doc=InputDocumentation(doc="[optional]\n- Width of PDF figure. Unit is cm. [default: 10]\n")), ToolInput(tag="in__outdir_", input_type=String(), position=0, doc=InputDocumentation(doc="--outdir\n- Output directory. [Default: ./]"))], outputs=[], container="quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Viewbs_Methgeno_V0_1_0().translate("wdl")

