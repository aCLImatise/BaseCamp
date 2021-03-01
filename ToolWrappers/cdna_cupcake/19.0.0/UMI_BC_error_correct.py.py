from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Umi_Bc_Error_Correct_Py_V0_1_0 = CommandToolBuilder(tool="UMI_BC_error_correct.py", base_command=["UMI_BC_error_correct.py"], inputs=[ToolInput(tag="in_bc_rank_file", input_type=File(optional=True), prefix="--bc_rank_file", doc=InputDocumentation(doc="(Optional) cell barcode rank file from short read data")), ToolInput(tag="in_only_top_ranked", input_type=Boolean(optional=True), prefix="--only_top_ranked", doc=InputDocumentation(doc="(Optional) only output those that are top-ranked. Must\nhave --bc_rank_file.")), ToolInput(tag="in_drop_seq_clean_report", input_type=String(optional=True), prefix="--dropseq_clean_report", doc=InputDocumentation(doc="Output from running DetectBeadSubstitutionErrors in\nDropSeq cookbook (ex: star_gene_exon_tagged_clean_subs\ntitution.bam_report.txt)")), ToolInput(tag="in_drop_seq_synthesis_report", input_type=Int(optional=True), prefix="--dropseq_synthesis_report", doc=InputDocumentation(doc="Output from running DetectBeadSynthesisErrors in\nDropSeq cookbook (ex: star_gene_exon_tagged_clean_subs\ntitution_clean2.bam_report.txt)\n")), ToolInput(tag="in_input_csv", input_type=String(), position=0, doc=InputDocumentation(doc="Input CSV")), ToolInput(tag="in_output_csv", input_type=String(), position=1, doc=InputDocumentation(doc="Output CSV"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Umi_Bc_Error_Correct_Py_V0_1_0().translate("wdl")

