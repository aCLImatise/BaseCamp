from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, String

Varlociraptor_Call_Variants_V0_1_0 = CommandToolBuilder(tool="varlociraptor_call_variants", base_command=["varlociraptor", "call", "variants"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output variant calls to given path (in BCF format). If omitted, prints\ncalls to STDOUT.")), ToolInput(tag="in_test_case_locus", input_type=Int(optional=True), prefix="--testcase-locus", doc=InputDocumentation(doc="Create a test case for the given locus. Locus must be given in the form\nCHROM:POS[:IDX]. IDX is thereby an optional value to select a particular\nvariant at the locus, counting from 1. If IDX is not specified, the first\nvariant will be chosen. Alternatively, for single variant VCFs, you can\nspecify 'all'.")), ToolInput(tag="in_test_case_prefix", input_type=Directory(optional=True), prefix="--testcase-prefix", doc=InputDocumentation(doc="Create test case files in the given directory.")), ToolInput(tag="in_generic", input_type=String(), position=0, doc=InputDocumentation(doc="Call variants for a given scenario specified with the varlociraptor calling grammar and a\nVCF/BCF with candidate variants.")), ToolInput(tag="in_help", input_type=String(), position=1, doc=InputDocumentation(doc="Prints this message or the help of the given subcommand(s)")), ToolInput(tag="in_tumor_normal", input_type=String(), position=2, doc=InputDocumentation(doc="Call somatic and germline variants from a tumor-normal sample pair and a VCF/BCF with candidate\nvariants.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output variant calls to given path (in BCF format). If omitted, prints\ncalls to STDOUT."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varlociraptor_Call_Variants_V0_1_0().translate("wdl", allow_empty_container=True)

