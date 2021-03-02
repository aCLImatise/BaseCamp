from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Genepredtoprot_V0_1_0 = CommandToolBuilder(tool="genePredToProt", base_command=["genePredToProt"], inputs=[ToolInput(tag="in_cds_fa", input_type=String(optional=True), prefix="-cdsFa", doc=InputDocumentation(doc="- output FASTA with CDS that was used to generate protein.\nThis will not include dropped partial codons.")), ToolInput(tag="in_protid_suffix", input_type=String(optional=True), prefix="-protIdSuffix", doc=InputDocumentation(doc="- add this string to the end of the name for protein FASTA")), ToolInput(tag="in_cds_id_suffix", input_type=String(optional=True), prefix="-cdsIdSuffix", doc=InputDocumentation(doc="- add this string to the end of the name for CDS FASTA")), ToolInput(tag="in_translates_ele_no", input_type=Boolean(optional=True), prefix="-translateSeleno", doc=InputDocumentation(doc="- assume internal TGA code for selenocysteine and translate to `U'.")), ToolInput(tag="in_includes_top", input_type=Boolean(optional=True), prefix="-includeStop", doc=InputDocumentation(doc="- If the CDS ends with a stop codon, represent it as a `*'")), ToolInput(tag="in_star_for_in_frames_tops", input_type=Boolean(optional=True), prefix="-starForInframeStops", doc=InputDocumentation(doc="- use `*' instead of `X' for in-frame stop codons.\nThis will result in selenocysteine's being `*', with only codons\ncontaining `N' being translated to `X'.  This doesn't include terminal\nstop\n")), ToolInput(tag="in_gene_pred_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_seqs", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genepredtoprot_V0_1_0().translate("wdl", allow_empty_container=True)

