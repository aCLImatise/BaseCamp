from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Novoutil_Rename_V0_1_0 = CommandToolBuilder(tool="novoutil_rename", base_command=["novoutil", "rename"], inputs=[ToolInput(tag="in_original", input_type=Boolean(optional=True), prefix="--original", doc=InputDocumentation(doc="Assembly Report column name originally in the Chrom attribute.\nChoose from:\nSequence-Name, GenBank-Accn, RefSeq-Accn, UCSC-style-name\nDefault is 'RefSeq-Accn'")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="--id", doc=InputDocumentation(doc="Report or Region column name to replace the Chrom attribute.\nChoose from assembly_report columns:\nSequence-Name, GenBank-Accn, RefSeq-Accn, UCSC-style-name\nDefault is not to change the name.")), ToolInput(tag="in_excise", input_type=File(optional=True), prefix="--excise", doc=InputDocumentation(doc="Exclude some sequence types from output file\nWhere <type> is one of MT, HLA, unplaced, unlocalised, or alt-scaffold\nAny sequence with a UCSC-Style-Name of 'na' is also excised from the file.")), ToolInput(tag="in_reorder", input_type=Boolean(optional=True), prefix="--reorder", doc=InputDocumentation(doc="Reorder sequences (Chrom) to match assembly_report.txt order.\nAssumes lines are grouped by Chrom attribute. If not sort before using this function.\n")), ToolInput(tag="in_assembly_report_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_assembly_regions_dot_txt", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_slash_vcf_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_excise", output_type=File(optional=True), selector=InputSelector(input_to_select="in_excise", type_hint=File()), doc=OutputDocumentation(doc="Exclude some sequence types from output file\nWhere <type> is one of MT, HLA, unplaced, unlocalised, or alt-scaffold\nAny sequence with a UCSC-Style-Name of 'na' is also excised from the file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novoutil_Rename_V0_1_0().translate("wdl", allow_empty_container=True)

