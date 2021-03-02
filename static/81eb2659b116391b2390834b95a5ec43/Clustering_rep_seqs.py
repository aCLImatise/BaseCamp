from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory, String

Clustering_Rep_Seqs_V0_1_0 = CommandToolBuilder(tool="Clustering_rep_seqs", base_command=["Clustering", "rep-seqs"], inputs=[ToolInput(tag="in_use_cluster_id", input_type=Boolean(optional=True), prefix="--use-cluster-id", doc=InputDocumentation(doc="Use the cluster id as the seq id.")), ToolInput(tag="in_invert", input_type=Boolean(optional=True), prefix="--invert", doc=InputDocumentation(doc="Invert preferential sequence id (give preference\nto seqids not in the file)")), ToolInput(tag="in_id_mapping", input_type=File(optional=True), prefix="--id-mapping", doc=InputDocumentation(doc="Id mapping used when clustering [required if\nusing dereplicated seq file]")), ToolInput(tag="in_longest", input_type=Boolean(optional=True), prefix="--longest", doc=InputDocumentation(doc="Select longest sequences instead of least dist")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Output directory (default=.)")), ToolInput(tag="in_pref_seq_ids", input_type=File(optional=True), prefix="--pref-seqids", doc=InputDocumentation(doc="Preferential sequence id file")), ToolInput(tag="in_one_rep_per_otu", input_type=Boolean(optional=True), prefix="--one-rep-per-otu", doc=InputDocumentation(doc="One representative sequence for each OTU.\nDefault is false. The default returns one rep\nseq for each sample at each OTU")), ToolInput(tag="in_squared", input_type=String(), position=0, doc=InputDocumentation(doc="-m,--mask-seq <arg>      Mask sequence id"))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output directory (default=.)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustering_Rep_Seqs_V0_1_0().translate("wdl", allow_empty_container=True)

