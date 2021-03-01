from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Ssu_Esl_Seqstat_V0_1_0 = CommandToolBuilder(tool="ssu_esl_seqstat", base_command=["ssu-esl-seqstat"], inputs=[ToolInput(tag="in_report_persequence_line", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": report per-sequence info line, not just a summary")), ToolInput(tag="in_count_report_composition", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": count and report residue composition")), ToolInput(tag="in_in_format", input_type=File(optional=True), prefix="--informat", doc=InputDocumentation(doc=": specify that input file is in format <s>")), ToolInput(tag="in_rna", input_type=Boolean(optional=True), prefix="--rna", doc=InputDocumentation(doc=": specify that <seqfile> contains RNA sequence")), ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--dna", doc=InputDocumentation(doc=": specify that <seqfile> contains DNA sequence")), ToolInput(tag="in_amino", input_type=Boolean(optional=True), prefix="--amino", doc=InputDocumentation(doc=": specify that <seqfile> contains protein sequence")), ToolInput(tag="in_seq_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssu_Esl_Seqstat_V0_1_0().translate("wdl", allow_empty_container=True)

