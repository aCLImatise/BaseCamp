from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Optimir_Libprep_V0_1_0 = CommandToolBuilder(tool="optimir_libprep", base_command=["optimir", "libprep"], inputs=[ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="Full path of the input VCF file.")), ToolInput(tag="in_matures_fast_a", input_type=File(optional=True), prefix="--maturesFasta", doc=InputDocumentation(doc="Path to the reference library containing mature miRNAs\nsequences [default: miRBase 21]")), ToolInput(tag="in_hairpins_fast_a", input_type=File(optional=True), prefix="--hairpinsFasta", doc=InputDocumentation(doc="Path to the reference library containing pri-miRNAs\nsequences [default: miRBase 21]")), ToolInput(tag="in_gff_three", input_type=Int(optional=True), prefix="--gff3", doc=InputDocumentation(doc="Path to the reference library containing miRNAs and\npri-miRNAs coordinates [default: miRBase v21, GRCh38\ncoordinates]")), ToolInput(tag="in_dir_output", input_type=File(optional=True), prefix="--dirOutput", doc=InputDocumentation(doc="Full path of the directory where output files are\ngenerated [default: ./OptimiR_Results_Dir/]")), ToolInput(tag="in_bowtie_two_build", input_type=Int(optional=True), prefix="--bowtie2_build", doc=InputDocumentation(doc="Provide path to the bowtie2 index builder binary\n[default: from $PATH]\n"))], outputs=[ToolOutput(tag="out_dir_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_dir_output", type_hint=File()), doc=OutputDocumentation(doc="Full path of the directory where output files are\ngenerated [default: ./OptimiR_Results_Dir/]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Optimir_Libprep_V0_1_0().translate("wdl", allow_empty_container=True)

