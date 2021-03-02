from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Rtg_Samplesim_V0_1_0 = CommandToolBuilder(tool="rtg_samplesim", base_command=["rtg", "samplesim"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="input VCF containing population variants")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output VCF file name")), ToolInput(tag="in_output_sdf", input_type=String(optional=True), prefix="--output-sdf", doc=InputDocumentation(doc="if set, output an SDF containing the sample genome")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="SDF containing the reference genome")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="name for sample")), ToolInput(tag="in_allow_missing_af", input_type=String(optional=True), prefix="--allow-missing-af", doc=InputDocumentation(doc="set, treat variants without allele frequency\nannotation as uniformly likely")), ToolInput(tag="in_no_gzip", input_type=Boolean(optional=True), prefix="--no-gzip", doc=InputDocumentation(doc="do not gzip the output")), ToolInput(tag="in_ploidy", input_type=String(optional=True), prefix="--ploidy", doc=InputDocumentation(doc="ploidy to use. Allowed values are [auto, diploid,\nhaploid] (Default is auto)")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="seed for the random number generator")), ToolInput(tag="in_sex", input_type=String(optional=True), prefix="--sex", doc=InputDocumentation(doc="sex of individual. Allowed values are [male, female,\neither] (Default is either)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output VCF file name"))], container="quay.io/biocontainers/rtg-tools:3.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Samplesim_V0_1_0().translate("wdl")

