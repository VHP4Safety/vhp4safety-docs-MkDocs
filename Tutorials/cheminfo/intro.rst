Information about chemicals
===========================

This tutorial explains how to use a few of the VHP4Safety services to aggregate information
about a chemical of interest.

Let's start with the compound with the name "aflatoxin B1".

Name to Structure
-----------------

The first task we have is to establish a chemical identity of what we mean with
"aflatoxin B1". That is, what is the chemical structure. This common task is the
starting point of most cheminformatics workflows: the resolve the chemical
structure from a chemical name. That is, a name to structure conversion.

There are many solutions available, including the main chemical compounds databases
like PubChem and ChemSpider. Because we want to use a common VHP4Safety language (a controlled vocabulary or
glossary), we can also use a VHP4Safety solution for this task.

For this, we have set up a service to link specific chemical structures to
names and external databases, the VHP4Safety Wikibase.

Step 1
^^^^^^

Visit `the compound wiki`_ and use the search box to find
"aflatoxin B1". The `resulting page`_ should look something like this:

.. _the compound wiki: https://compoundcloud.wikibase.cloud/
.. _resulting page : https://compoundcloud.wikibase.cloud/wiki/Item:Q1


.. image:: ./Q1.png
   :alt: screenshot of aflatoxin B1 in the compound wiki

Step 2
^^^^^^

On this page we can find chemical information and links to other database.
Information we can find include:

* the SMILES: a line notation to describe the chemical structure (using a chemical graph approach)
* the mass
* the InChI and InChIKey: the global, unique identifier of this compound

Write down the SMILES, which we are going to use in the next section.

Second, we find external identifiers and links to resources with more information
about this compound. For example, for this compound we find a link to the
ToxBank Wiki [`paper` <https://doi.org/10.1002/minf.201200114>] where the SEURAT-1 cluster projects collected information
about compounds in their discussion to reach their Gold Compound collection.

Other information we can find:

* the Wikidata Q identifier: a link to Wikidata
* the PubChem CID: a link to PubChem
* xenobiotic metabolism pathway: a link to a WikiPathways describing experimental knowledge about the compound metabolism

Visualize a Structure
---------------------

With the SMILES you got from the compound wiki, you can now visualize this
with the `CDK Depict <https://cdkdepict.cloud.vhp4safety.nl/>` service.

Step 3
^^^^^^

Copy/paste the SMILES into the text box and wait for CDK Depict to make a 2D depiction:

.. image:: cdkdepict_vhp.png
   :alt: 2D depictiong of the chemical structure of aflatoxin B1

Note that you can change the depiction style/properties. For example, you can choose to not
abbreviate long chains:

..  image:: cdkdepict_vhp2.png
    :alt: option to do not abbreviate groups

Or to show the CIP R/S labels:

.. image:: cdkdepict_vhp3.png
   :alt: option for R/S labelling

External databases
------------------

... back in the Wikibase

Metabolite prediction
---------------------

... SOMBIE

