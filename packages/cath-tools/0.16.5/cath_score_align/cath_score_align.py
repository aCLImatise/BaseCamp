from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Cath_Score_Align_V0_1_0 = CommandToolBuilder(tool="cath_score_align", base_command=["cath-score-align"], inputs=[ToolInput(tag="in_output_version_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --version ]                Output version information")), ToolInput(tag="in_res_name_align", input_type=Boolean(optional=True), prefix="--res-name-align", doc=InputDocumentation(doc="Align residues by simply matching their names (numbers+insert)\n(for multiple models of the same structure)")), ToolInput(tag="in_fast_a_aln_in_file", input_type=File(optional=True), prefix="--fasta-aln-infile", doc=InputDocumentation(doc="Read FASTA alignment from file <file>")), ToolInput(tag="in_ssap_aln_in_file", input_type=File(optional=True), prefix="--ssap-aln-infile", doc=InputDocumentation(doc="Read SSAP alignment from file <file>")), ToolInput(tag="in_cora_aln_in_file", input_type=File(optional=True), prefix="--cora-aln-infile", doc=InputDocumentation(doc="Read CORA alignment from file <file>")), ToolInput(tag="in_ssap_scores_in_file", input_type=File(optional=True), prefix="--ssap-scores-infile", doc=InputDocumentation(doc="Glue pairwise alignments together using SSAP scores in file <file>\nAssumes all .list alignment files in same directory")), ToolInput(tag="in_do_the_s_saps", input_type=Boolean(optional=True), prefix="--do-the-ssaps", doc=InputDocumentation(doc="[=<dir>(='')]    Do the required SSAPs in directory <dir>; use results as with --ssap-scores-infile\nUse a suitable temp directory if none is specified")), ToolInput(tag="in_align_refining", input_type=String(optional=True), prefix="--align-refining", doc=InputDocumentation(doc="(=NO)   Apply <refn> refining to the alignment, one of available values:")), ToolInput(tag="in_pdb_in_file", input_type=File(optional=True), prefix="--pdb-infile", doc=InputDocumentation(doc="Read PDB from file <pdbfile> (may be specified multiple times)")), ToolInput(tag="in_pdb_s_from_stdin", input_type=Boolean(optional=True), prefix="--pdbs-from-stdin", doc=InputDocumentation(doc="Read PDBs from stdin (separated by line: 'END   ')")), ToolInput(tag="in_no", input_type=String(), position=0, doc=InputDocumentation(doc="- Don't refine the alignment"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cath_Score_Align_V0_1_0().translate("wdl", allow_empty_container=True)

