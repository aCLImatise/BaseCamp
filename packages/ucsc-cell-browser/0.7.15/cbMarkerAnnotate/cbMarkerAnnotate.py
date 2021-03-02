from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Cbmarkerannotate_V0_1_0 = CommandToolBuilder(tool="cbMarkerAnnotate", base_command=["cbMarkerAnnotate"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="show debug messages")), ToolInput(tag="in_hprd", input_type=File(optional=True), prefix="--hprd", doc=InputDocumentation(doc="location of HPRD file, default\ngeneAnnot/HPRD_molecular_class_081914.txt")), ToolInput(tag="in_hgnc", input_type=File(optional=True), prefix="--hgnc", doc=InputDocumentation(doc="location of HGNC file, default\ngeneAnnot/hgnc_complete_set_05Dec17.txt")), ToolInput(tag="in_s_far_i", input_type=File(optional=True), prefix="--sfari", doc=InputDocumentation(doc="location of SFARI file, default geneAnnot/SFARI-")), ToolInput(tag="in_cosmic", input_type=File(optional=True), prefix="--cosmic", doc=InputDocumentation(doc="location of COSMIC Census file, default\ngeneAnnot/Census_allWed_Dec__6_18_35_54_2017.tsv")), ToolInput(tag="in_hpo", input_type=File(optional=True), prefix="--hpo", doc=InputDocumentation(doc="location of HPO gene/disease/phenotype file, default\ngeneAnnot/hpo_frequent_7Dec17.txt")), ToolInput(tag="in_lmd", input_type=File(optional=True), prefix="--lmd", doc=InputDocumentation(doc="location of BrainSpan LMD file, default\ngeneAnnot/brainspan_genes.csv")), ToolInput(tag="in_mgi_ortho", input_type=File(optional=True), prefix="--mgiOrtho", doc=InputDocumentation(doc="location of MGI Homologene file, default\ngeneAnnot/mgi_HGNC_homologene_8Dec17.txt")), ToolInput(tag="in_eur_express", input_type=File(optional=True), prefix="--eurexpress", doc=InputDocumentation(doc="location of Eurexpress file, default\ngeneAnnot/eurexpress_7Dec17.txt")), ToolInput(tag="in_brain_span_mouse_dev", input_type=File(optional=True), prefix="--brainspanMouseDev", doc=InputDocumentation(doc="location of brainspan Mouse Development ISH file,\ndefault geneAnnot/brainspanMouse_9Dec17.txt\n")), ToolInput(tag="in_gene_genes_export_zero_six_one_two_two_zero_one_seven_dot_csv", input_type=Int(), position=0, doc=InputDocumentation(doc="--omim=OMIM           location of OMIM file, default geneAnnot/mim2gene.txt"))], outputs=[], container="quay.io/biocontainers/ucsc-cell-browser:0.7.15--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cbmarkerannotate_V0_1_0().translate("wdl")

